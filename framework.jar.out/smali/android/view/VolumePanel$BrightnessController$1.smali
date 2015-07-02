.class Landroid/view/VolumePanel$BrightnessController$1;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel$BrightnessController;->onChanged(Landroid/view/ToggleSlider;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/VolumePanel$BrightnessController;

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Landroid/view/VolumePanel$BrightnessController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1496
    iput-object p1, p0, Landroid/view/VolumePanel$BrightnessController$1;->this$1:Landroid/view/VolumePanel$BrightnessController;

    iput p2, p0, Landroid/view/VolumePanel$BrightnessController$1;->val$val:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1498
    iget-object v0, p0, Landroid/view/VolumePanel$BrightnessController$1;->this$1:Landroid/view/VolumePanel$BrightnessController;

    #getter for: Landroid/view/VolumePanel$BrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/VolumePanel$BrightnessController;->access$1500(Landroid/view/VolumePanel$BrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    iget v2, p0, Landroid/view/VolumePanel$BrightnessController$1;->val$val:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1500
    return-void
.end method
