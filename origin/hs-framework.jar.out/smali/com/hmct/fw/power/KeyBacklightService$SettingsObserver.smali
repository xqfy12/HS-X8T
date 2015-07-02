.class final Lcom/hmct/fw/power/KeyBacklightService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "KeyBacklightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hmct/fw/power/KeyBacklightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hmct/fw/power/KeyBacklightService;


# direct methods
.method public constructor <init>(Lcom/hmct/fw/power/KeyBacklightService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/hmct/fw/power/KeyBacklightService$SettingsObserver;->this$0:Lcom/hmct/fw/power/KeyBacklightService;

    .line 107
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/hmct/fw/power/KeyBacklightService$SettingsObserver;->this$0:Lcom/hmct/fw/power/KeyBacklightService;

    #getter for: Lcom/hmct/fw/power/KeyBacklightService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/hmct/fw/power/KeyBacklightService;->access$000(Lcom/hmct/fw/power/KeyBacklightService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/hmct/fw/power/KeyBacklightService$SettingsObserver;->this$0:Lcom/hmct/fw/power/KeyBacklightService;

    #calls: Lcom/hmct/fw/power/KeyBacklightService;->handleSettingsChangedLocked()V
    invoke-static {v0}, Lcom/hmct/fw/power/KeyBacklightService;->access$100(Lcom/hmct/fw/power/KeyBacklightService;)V

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
