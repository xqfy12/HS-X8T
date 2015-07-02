.class Lcom/android/internal/widget/multiwaveview/BubblePoolView$1;
.super Ljava/lang/Object;
.source "BubblePoolView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/BubblePoolView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/BubblePoolView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/BubblePoolView;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView$1;->this$0:Lcom/android/internal/widget/multiwaveview/BubblePoolView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 35
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView$1;->this$0:Lcom/android/internal/widget/multiwaveview/BubblePoolView;

    #getter for: Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBaseStartX:I
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->access$000(Lcom/android/internal/widget/multiwaveview/BubblePoolView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView$1;->this$0:Lcom/android/internal/widget/multiwaveview/BubblePoolView;

    #getter for: Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBaseStartY:I
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->access$100(Lcom/android/internal/widget/multiwaveview/BubblePoolView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView$1;->this$0:Lcom/android/internal/widget/multiwaveview/BubblePoolView;

    #calls: Lcom/android/internal/widget/multiwaveview/BubblePoolView;->startBubble(Z)V
    invoke-static {v0, v3}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->access$200(Lcom/android/internal/widget/multiwaveview/BubblePoolView;Z)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView$1;->this$0:Lcom/android/internal/widget/multiwaveview/BubblePoolView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView$1;->this$0:Lcom/android/internal/widget/multiwaveview/BubblePoolView;

    #getter for: Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBaseStartX:I
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->access$000(Lcom/android/internal/widget/multiwaveview/BubblePoolView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/BubblePoolView$1;->this$0:Lcom/android/internal/widget/multiwaveview/BubblePoolView;

    #getter for: Lcom/android/internal/widget/multiwaveview/BubblePoolView;->mBaseStartY:I
    invoke-static {v2}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->access$100(Lcom/android/internal/widget/multiwaveview/BubblePoolView;)I

    move-result v2

    #calls: Lcom/android/internal/widget/multiwaveview/BubblePoolView;->startBubble(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/widget/multiwaveview/BubblePoolView;->access$300(Lcom/android/internal/widget/multiwaveview/BubblePoolView;IIZ)V

    goto :goto_0
.end method
