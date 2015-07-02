.class Landroid/view/VolumePanel$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method public constructor <init>(Landroid/view/VolumePanel;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1524
    iput-object p1, p0, Landroid/view/VolumePanel$BrightnessObserver;->this$0:Landroid/view/VolumePanel;

    .line 1525
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1526
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 1530
    iget-object v0, p0, Landroid/view/VolumePanel$BrightnessObserver;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->initBrightButton()V
    invoke-static {v0}, Landroid/view/VolumePanel;->access$1000(Landroid/view/VolumePanel;)V

    .line 1531
    iget-object v0, p0, Landroid/view/VolumePanel$BrightnessObserver;->this$0:Landroid/view/VolumePanel;

    iget-object v1, p0, Landroid/view/VolumePanel$BrightnessObserver;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->getBrightness()I
    invoke-static {v1}, Landroid/view/VolumePanel;->access$1100(Landroid/view/VolumePanel;)I

    move-result v1

    #calls: Landroid/view/VolumePanel;->updateBrightnessFrac(I)V
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$1200(Landroid/view/VolumePanel;I)V

    .line 1532
    return-void
.end method

.method public startObserving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1535
    iget-object v1, p0, Landroid/view/VolumePanel$BrightnessObserver;->this$0:Landroid/view/VolumePanel;

    iget-object v1, v1, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1536
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1537
    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1540
    const-string/jumbo v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1543
    return-void
.end method
