script.Parent.MouseButton1Click:Connect(function()
	script.Parent:SetAttribute("Toggle", not script.Parent:GetAttribute("Toggle"))
	script.Parent.Text = script.Parent:GetAttribute("Toggle") and "ON" or "OFF"
end)
