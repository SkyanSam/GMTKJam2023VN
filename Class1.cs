using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace GMTKJam2023VN
{
    class SaveSystem : Node2D
    {
        public void Save()
        {
            var file = new Godot.File();
            file.Open("user://storydata.txt", Godot.File.ModeFlags.Write);
            file.StoreString(StoryManager.instance.story.state.ToJson());
            file.Close();
        }
        public void Load()
        {
            var file = new Godot.File();
            file.Open("user://storydata.txt", Godot.File.ModeFlags.Read);
            StoryManager.instance.story.state.LoadJson(file.GetAsText());
            file.Close();
        }
    }
}
