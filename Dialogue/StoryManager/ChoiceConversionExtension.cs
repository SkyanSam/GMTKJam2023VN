using System.Collections.Generic;
using Ink.Runtime;
public static class ChoiceConversionExtension
{
	public static string[] ToArrayOfString(this List<Choice> choices)
	{
		var list = new string[choices.Count];
		for (int i = 0; i < choices.Count; i++)
			list[i] = choices[i].text;
		return list;
	}
}
