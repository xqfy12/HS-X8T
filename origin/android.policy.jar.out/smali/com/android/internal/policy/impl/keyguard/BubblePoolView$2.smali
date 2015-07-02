.class Lcom/android/internal/policy/impl/keyguard/BubblePoolView$2;
.super Landroid/os/Handler;
.source "BubblePoolView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->batteryView:Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$400(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    const v2, 0x1020297

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;

    #setter for: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->batteryView:Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$402(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;)Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->eicoView:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$500(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    const v2, 0x1020296

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->eicoView:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$502(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->batteryView:Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$400(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->eicoView:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$500(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->eicoView:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$500(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getisSnaped()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    :cond_2
    :goto_0
    return-void

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/BubblePoolView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/BubblePoolView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->batteryView:Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/BubblePoolView;->access$400(Lcom/android/internal/policy/impl/keyguard/BubblePoolView;)Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/BatteryMonitor;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
