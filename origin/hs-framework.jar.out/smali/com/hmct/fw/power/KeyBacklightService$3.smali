.class Lcom/hmct/fw/power/KeyBacklightService$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyBacklightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hmct/fw/power/KeyBacklightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hmct/fw/power/KeyBacklightService;


# direct methods
.method constructor <init>(Lcom/hmct/fw/power/KeyBacklightService;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/hmct/fw/power/KeyBacklightService$3;->this$0:Lcom/hmct/fw/power/KeyBacklightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/hmct/fw/power/KeyBacklightService$3;->this$0:Lcom/hmct/fw/power/KeyBacklightService;

    const-string v1, "enabled"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/hmct/fw/power/KeyBacklightService;->capEnabled:Z
    invoke-static {v0, v1}, Lcom/hmct/fw/power/KeyBacklightService;->access$702(Lcom/hmct/fw/power/KeyBacklightService;Z)Z

    .line 347
    iget-object v0, p0, Lcom/hmct/fw/power/KeyBacklightService$3;->this$0:Lcom/hmct/fw/power/KeyBacklightService;

    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/hmct/fw/power/KeyBacklightService;->capCovered:Z
    invoke-static {v0, v1}, Lcom/hmct/fw/power/KeyBacklightService;->access$802(Lcom/hmct/fw/power/KeyBacklightService;Z)Z

    .line 348
    iget-object v0, p0, Lcom/hmct/fw/power/KeyBacklightService$3;->this$0:Lcom/hmct/fw/power/KeyBacklightService;

    #getter for: Lcom/hmct/fw/power/KeyBacklightService;->mCallback:Lcom/hmct/common/power/IKeyBackLightCallback;
    invoke-static {v0}, Lcom/hmct/fw/power/KeyBacklightService;->access$400(Lcom/hmct/fw/power/KeyBacklightService;)Lcom/hmct/common/power/IKeyBackLightCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/hmct/common/power/IKeyBackLightCallback;->onStateChanged()V

    .line 349
    return-void
.end method
