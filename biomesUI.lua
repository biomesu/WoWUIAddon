SLASH_RELOADUI1 = "/rl"; --command for reloading UI
SlashCmdList.RELOAD = ReloadUI;

SLASH_FRAMESTK1 = "/fs"; 
SlashCmdList.FRAMESTK = function()
	LoadAddOn("Blizzard_DebugTools");
	FrameStackTooltip_Toggle();
end


for i = 1, NUM_CHAT_WINDOWS do
	_G["ChatFrame"..i.."EditBox"]:SetAltArrowKeyMode(false);
end


local UIConfig = CreateFrame("Frame", "BiomesUI", UIParent, "BasicFrameTemplateWithInset");
UIConfig:SetSize(260, 360);
UIConfig:SetPoint("CENTER"); -- Doesn't need to be ("CENTER", UIParent, "CENTER")

UIConfig.title = UIConfig:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
UIConfig.title:SetPoint("LEFT", UIConfig.TitleBg, "LEFT", 5, 0);
UIConfig.title:SetText("BiomesUI");
--UIConfig.title:SetFont("Fonts\\FRIZQT__.ttf", 11, "OUTLINE");

------------
--BUTTONS

UIConfig.saveBtn = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.saveBtn:SetPoint("CENTER", UIConfig, "TOP", 0, -70);
UIConfig.saveBtn:SetSize(140, 40);
UIConfig.saveBtn:SetText("Test Button 1");
UIConfig.saveBtn:SetNormalFontObject("GameFontNormalLarge");
UIConfig.saveBtn:SetHighlightFontObject("GameFontHighlightLarge");



--reset button
UIConfig.resetBtn = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.resetBtn:SetPoint("TOP", UIConfig.saveBtn, "BOTTOM", 0, -10);
UIConfig.resetBtn:SetSize(140, 40);
UIConfig.resetBtn:SetText("Test Button 2");
UIConfig.resetBtn:SetNormalFontObject("GameFontNormalLarge");
UIConfig.resetBtn:SetHighlightFontObject("GameFontHighlightLarge");

--load button
UIConfig.loadBtn = CreateFrame("Button", nil, UIConfig, "GameMenuButton");
UIConfig.loadBtn:SetPoint("TOP", UIConfig.resetBtn, "BOTTOM", 0, -10);
UIConfig.loadBtn:SetSize(140, 40);
UIConfig.loadBtn:SetText("Test Button 3");
UIConfig.loadBtn:SetNormalFontObject("GameFontNormalLarge");
UIConfig.loadBtn:SetHighlightFontObject("GameFontHighlightLarge");

--------------
---SLIDERS

UIConfig.slider1 = CreateFrame("SLIDER", nil, UIConfig, "OptionsSlider");
UIConfig.slider1:SetPoint("TOP", UIConfig.loadBtn, "BOTTOM", 0, -20);
UIConfig.slider1:SetMinMaxValues(1, 100);
UIConfig.slider1:SetValue(50);

UIConfig.slider1:SetValueStep(30);
UIConfig.slider1:SetObeyStepOnDrag(true);


UIConfig.slider2 = CreateFrame("SLIDER", nil, UIConfig, "OptionsSlider");
UIConfig.slider2:SetPoint("TOP", UIConfig.slider1, "BOTTOM", 0, -20);
UIConfig.slider2:SetMinMaxValues(1, 100);
UIConfig.slider2:SetValue(40);
UIConfig.slider2:SetValueStep(30);
UIConfig.slider2:SetObeyStepOnDrag(true);

----------------
--BUTTONS

UIConfig.checkBtn1 = CreateFrame("CheckButton", nil, UIConfig, "UICheckButton");
UIConfig.checkBtn1:SetPoint("TOPLEFT", UIConfig.slider1, "BOTTOMLEFT", -10, -40);
UIConfig.checkBtn1.text:SetText("Test Check Button");


UIConfig.checkBtn2 = CreateFrame("CheckButton", nil, UIConfig, "UICheckButton");
UIConfig.checkBtn2:SetPoint("TOPLEFT", UIConfig.checkBtn1, "BOTTOMLEFT", 0, -10);
UIConfig.checkBtn2.text:SetText("Test 2 Check Button");
UIConfig.checkBtn2:SetChecked(true);