using (StreamWriter writer = new StreamWriter("strings.txt"))
{
    foreach (var str in Data.Strings)
    {
        if (str.Content.Contains("\n") || str.Content.Contains("\r"))
            continue;
        writer.WriteLine(str.Content);
    }
}