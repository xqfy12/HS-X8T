.class public Landroid/view/ToggleSlider;
.super Landroid/widget/RelativeLayout;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ToggleSlider$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumePanel.ToggleSlider"


# instance fields
.field private mLabel:Landroid/widget/TextView;

.field private mListener:Landroid/view/ToggleSlider$Listener;

.field private mSlider:Landroid/widget/SeekBar;

.field private mToggle:Landroid/widget/CompoundButton;

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const v1, 0x10900d1

    invoke-static {p1, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x1020017

    invoke-virtual {p0, v1}, Landroid/view/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Landroid/view/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    .line 65
    iget-object v1, p0, Landroid/view/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    iget-object v1, p0, Landroid/view/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    const v2, 0x1080614

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    const v1, 0x102038f

    invoke-virtual {p0, v1}, Landroid/view/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Landroid/view/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    .line 69
    iget-object v1, p0, Landroid/view/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 71
    const v1, 0x10202bb

    invoke-virtual {p0, v1}, Landroid/view/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/view/ToggleSlider;->mLabel:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Landroid/view/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const v2, 0x10405c8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 73
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/view/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 78
    iget-object v0, p0, Landroid/view/ToggleSlider;->mListener:Landroid/view/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Landroid/view/ToggleSlider;->mListener:Landroid/view/ToggleSlider$Listener;

    invoke-interface {v0, p0}, Landroid/view/ToggleSlider$Listener;->onInit(Landroid/view/ToggleSlider;)V

    .line 81
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "toggle"
    .parameter "checked"

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/view/ToggleSlider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_1

    .line 88
    const v3, 0x1080576

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 90
    .local v2, thumb:Landroid/graphics/drawable/Drawable;
    const v3, 0x1080613

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 98
    .local v1, slider:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v3, p0, Landroid/view/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v3, p0, Landroid/view/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v3, p0, Landroid/view/ToggleSlider;->mListener:Landroid/view/ToggleSlider$Listener;

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Landroid/view/ToggleSlider;->mListener:Landroid/view/ToggleSlider$Listener;

    iget-boolean v4, p0, Landroid/view/ToggleSlider;->mTracking:Z

    iget-object v5, p0, Landroid/view/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-interface {v3, p0, v4, p2, v5}, Landroid/view/ToggleSlider$Listener;->onChanged(Landroid/view/ToggleSlider;ZZI)V

    .line 104
    :cond_0
    return-void

    .line 93
    .end local v1           #slider:Landroid/graphics/drawable/Drawable;
    .end local v2           #thumb:Landroid/graphics/drawable/Drawable;
    :cond_1
    const v3, 0x108057a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 95
    .restart local v2       #thumb:Landroid/graphics/drawable/Drawable;
    const v3, 0x108057c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1       #slider:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 107
    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/view/ToggleSlider;->mListener:Landroid/view/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/view/ToggleSlider;->mListener:Landroid/view/ToggleSlider$Listener;

    iget-boolean v1, p0, Landroid/view/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Landroid/view/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-interface {v0, p0, v1, v2, p2}, Landroid/view/ToggleSlider$Listener;->onChanged(Landroid/view/ToggleSlider;ZZI)V

    .line 110
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ToggleSlider;->mTracking:Z

    .line 114
    iget-object v0, p0, Landroid/view/ToggleSlider;->mListener:Landroid/view/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/view/ToggleSlider;->mListener:Landroid/view/ToggleSlider$Listener;

    iget-boolean v1, p0, Landroid/view/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Landroid/view/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iget-object v3, p0, Landroid/view/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/view/ToggleSlider$Listener;->onChanged(Landroid/view/ToggleSlider;ZZI)V

    .line 117
    :cond_0
    iget-object v0, p0, Landroid/view/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 118
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ToggleSlider;->mTracking:Z

    .line 122
    iget-object v0, p0, Landroid/view/ToggleSlider;->mListener:Landroid/view/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/view/ToggleSlider;->mListener:Landroid/view/ToggleSlider$Listener;

    iget-boolean v1, p0, Landroid/view/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Landroid/view/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iget-object v3, p0, Landroid/view/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/view/ToggleSlider$Listener;->onChanged(Landroid/view/ToggleSlider;ZZI)V

    .line 125
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 132
    iget-object v0, p0, Landroid/view/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 133
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 140
    iget-object v0, p0, Landroid/view/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 141
    return-void
.end method

.method public setOnChangedListener(Landroid/view/ToggleSlider$Listener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 128
    iput-object p1, p0, Landroid/view/ToggleSlider;->mListener:Landroid/view/ToggleSlider$Listener;

    .line 129
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/view/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 145
    return-void
.end method
