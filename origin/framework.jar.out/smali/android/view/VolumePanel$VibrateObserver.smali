.class Landroid/view/VolumePanel$VibrateObserver;
.super Landroid/database/ContentObserver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method public constructor <init>(Landroid/view/VolumePanel;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1547
    iput-object p1, p0, Landroid/view/VolumePanel$VibrateObserver;->this$0:Landroid/view/VolumePanel;

    .line 1548
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1549
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 1553
    iget-object v0, p0, Landroid/view/VolumePanel$VibrateObserver;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->updateVibrateSwitch()V
    invoke-static {v0}, Landroid/view/VolumePanel;->access$1600(Landroid/view/VolumePanel;)V

    .line 1554
    return-void
.end method

.method public startObserving()V
    .locals 3

    .prologue
    .line 1557
    iget-object v1, p0, Landroid/view/VolumePanel$VibrateObserver;->this$0:Landroid/view/VolumePanel;

    iget-object v1, v1, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1558
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1559
    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1562
    return-void
.end method
