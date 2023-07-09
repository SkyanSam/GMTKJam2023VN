using Godot;
using System;
using Ink;
using Ink.Runtime;
using System.Collections.Generic;

public class StoryManager : Node2D
{
	public static StoryManager instance;
	public Story story;
	// Declare member variables here. Examples:
	// private int a = 2;
	// private string b = "text";
	public Node2D choiceBox;
	public Node2D dialogueBox;
	public Node2D dialogueUILayer;

	// Called when the node enters the scene tree for the first time.
	bool storyActive = false;
	public override void _Ready() 
	{
		//GetNode("/root/Node2D/Global").Set("story_manager", this);
		instance = this;
	}
	public void Next()
	{
		if (story.canContinue)
		{
			var split = story.Continue().Split(':');
			TriggerDialogue(split.Length == 2? split[0] : "", split[split.Length - 1]);
		}
		else if (story.currentChoices.Count > 0)
		{
			TriggerChoice(story.currentChoices.ToArrayOfString());
		}
		else
		{
			ExitStory();
		}
	}
	public void ExitStory()
	{
		dialogueUILayer.Call("hide");
		//var player = (Node)GetNode(new NodePath("/root/Global")).Get("player");
		//player.Set("move_to_target", false);
		storyActive = false;
		GD.Print("Exiting Story");
	}
	
	public void Start(string inkPath, string label)
	{
		dialogueUILayer.Call("show");
		storyActive = true;
		File inkFile = new File();
		string path = inkPath;
		inkFile.Open(path, File.ModeFlags.Read);
		string text = inkFile.GetAsText();
		story = new Story(text);
		if (label != "") story.ChoosePathString(label);
		Next();
	}
	public object GetVariable(string s)
    {
		return story.variablesState[s];
    }
	public void SetVariable(string s, object value)
    {
		story.variablesState[s] = value;
	}
	public void TriggerDialogue(string characterName, string characterSpeech)
	{
		string finalText = characterName == "" ? characterSpeech : characterName + ": " + characterSpeech;
		dialogueBox.Call("trigger_dialogue", finalText);
	}
	public void TriggerChoice(string[] choices)
	{
		choiceBox.Call("trigger_choice", (object)choices);
	}
	public void SelectChoice(int index)
	{
		story.ChooseChoiceIndex(index);
		choiceBox.Set("is_choosing", false);
		choiceBox.Call("hide");
	}
	public override void _Process(float delta)
	{
		if (Input.IsActionJustPressed("ui_accept"))
		{
			if ((bool)choiceBox.Get("is_choosing"))
				SelectChoice((int)choiceBox.Get("index"));

			Next();
		}
	}
	public void SetChoiceBox(string path)
	{
		choiceBox = GetNode(new NodePath(path)) as Node2D;
	}
}
