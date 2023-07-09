using Godot;
using System;
using System.Collections.Generic;
public class Inventory : Control
{
	private static List<Resource> inventoryItems = new List<Resource>();
	private Godot.ColorRect[,] itemBGNodes = new Godot.ColorRect[3,3];
	private Godot.TextureRect[] itemImages = new Godot.TextureRect[9];
	private Godot.Label itemDescription;
	int nodePointerX = 0;
	int nodePointerY = 0;

	private Resource inventoryItemChainBracelet;
	private Resource inventoryItemGloves;
	private Resource inventoryItemGoldCoin;
	private Resource inventoryItemJadeNecklace;
	private Resource inventoryItemQuill;
	private Resource inventoryItemRemnant;
	private Resource inventoryItemGhostlyGalleon;
	private Resource inventoryItemHorseBagScroll;
	private Resource inventoryItemAlchoholDrink;
	private Resource inventoryItemDarts;

	public override void _Ready()
	{

		inventoryItemChainBracelet = ResourceLoader.Load("InventoryItems/ChainBracelet.tres");
		inventoryItemGloves = ResourceLoader.Load("InventoryItems/Gloves.tres");
		inventoryItemGoldCoin = ResourceLoader.Load("InventoryItems/ChainBracelet.tres");
		inventoryItemJadeNecklace = ResourceLoader.Load("InventoryItems/JadeNecklace.tres");
		inventoryItemRemnant = ResourceLoader.Load("InventoryItems/Remnant.tres");
		inventoryItemGhostlyGalleon = ResourceLoader.Load("InventoryItems/GhostlyGalleon.tres");
		inventoryItemHorseBagScroll = ResourceLoader.Load("InventoryItems/HorseBagScroll.tres");
		inventoryItemAlchoholDrink = ResourceLoader.Load("InventoryItems/AlchoholDrink.tres");
		inventoryItemDarts = ResourceLoader.Load("InventoryItems/Darts.tres");
		
		itemDescription = (Label)GetNode("Description");

		for (int i = 0; i < 9; i++) {
			var coord = GetCoord(i);
			itemBGNodes[(int)coord.x,(int)coord.y] = (ColorRect)GetNode(new NodePath($"ItemBG{i}"));
			itemImages[i] = (TextureRect)GetNode(new NodePath($"ItemImg{i}"));
		}
		Select(nodePointerX,nodePointerY);
		UpdateItemImages();
	}
	public override void _Process(float delta)
	{
		if (Input.IsActionJustPressed("ui_left")) MovePointer(-1,0);
		else if (Input.IsActionJustPressed("ui_right")) MovePointer(1,0);
		else if (Input.IsActionJustPressed("ui_up")) MovePointer(0,-1);
		else if (Input.IsActionJustPressed("ui_down")) MovePointer(0,1);

		if (Input.IsActionJustPressed("ui_accept")) OnPressed();
		else if (Input.IsActionJustPressed("ui_cancel")) OnCancel();

		UpdateItemsFromStory();
	}
	void MovePointer(int dirX, int dirY)
	{
		GD.Print($"move pointer: {dirX},{dirY}");
		if (0 <= nodePointerX + dirX && nodePointerX + dirX < 3 && 0 <= nodePointerY + dirY && nodePointerY + dirY < 3)
		{
			if (itemBGNodes[nodePointerX + dirX, nodePointerY + dirY] != null) 
			{
				Unselect(nodePointerX, nodePointerY);
				nodePointerX += dirX;
				nodePointerY += dirY;
				Select(nodePointerX, nodePointerY);
			}
		}
	}
	public void DoCheck(string variable, Resource resource)
	{
		if ((bool)StoryManager.instance.story.variablesState[variable] == true && !inventoryItems.Contains(resource))
		{
			inventoryItems.Add(resource);
		}
		else if ((bool)StoryManager.instance.story.variablesState[variable] == false && inventoryItems.Contains(resource))
        {
			inventoryItems.Remove(resource);
        }
	}
	public void UpdateItemsFromStory()
    {
		DoCheck("hasHorseBagScroll", inventoryItemHorseBagScroll);
		DoCheck("hasAlchoholDrink", inventoryItemAlchoholDrink);
		DoCheck("hasDarts", inventoryItemDarts);
	}
	void Unselect(int x, int y)
	{
		itemBGNodes[nodePointerX, nodePointerY].Visible = false;
		//itemBGNodes[nodePointerX, nodePointerY].SelfModulate = new Color(1,1,1);
	}
	int GetID(int x, int y)
    {
		return x + (y * 3);
    }
	Vector2 GetCoord(int i)
    {
		return new Vector2(i % 3, i / 3);
    }
	void Select(int x, int y)
	{
		itemBGNodes[nodePointerX, nodePointerY].Visible = true;
		int itemID = (nodePointerX - 3) + (nodePointerY * 6);
		if (itemID < inventoryItems.Count)
			itemDescription.Text = (String)inventoryItems[itemID].Get("description");
		else
			itemDescription.Text = "";
	}
	void UpdateItemImages()
	{
		for (int i = 0; i < inventoryItems.Count; i++)
		{
			itemImages[i].Texture = (Godot.Texture)inventoryItems[i].Get("texture");
		}
	}
	void OnPressed()
	{

	}
	void OnDiscard()
	{

	}
	void OnCancel()
	{
		
	}

	[Signal] public delegate void OnExitInventory();
}
