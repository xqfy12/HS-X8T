.class Lcom/google/common/eventbus/AsyncEventBus$1;
.super Ljava/lang/Object;
.source "AsyncEventBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/eventbus/AsyncEventBus;->dispatch(Ljava/lang/Object;Lcom/google/common/eventbus/EventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/eventbus/AsyncEventBus;

.field final synthetic val$event:Ljava/lang/Object;

.field final synthetic val$handler:Lcom/google/common/eventbus/EventHandler;


# direct methods
.method constructor <init>(Lcom/google/common/eventbus/AsyncEventBus;Ljava/lang/Object;Lcom/google/common/eventbus/EventHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->this$0:Lcom/google/common/eventbus/AsyncEventBus;

    iput-object p2, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->val$event:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->val$handler:Lcom/google/common/eventbus/EventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->this$0:Lcom/google/common/eventbus/AsyncEventBus;

    iget-object v1, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->val$event:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/eventbus/AsyncEventBus$1;->val$handler:Lcom/google/common/eventbus/EventHandler;

    #calls: Lcom/google/common/eventbus/EventBus;->dispatch(Ljava/lang/Object;Lcom/google/common/eventbus/EventHandler;)V
    invoke-static {v0, v1, v2}, Lcom/google/common/eventbus/AsyncEventBus;->access$001(Lcom/google/common/eventbus/AsyncEventBus;Ljava/lang/Object;Lcom/google/common/eventbus/EventHandler;)V

    .line 95
    return-void
.end method
