.class Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;
.super Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;
.source "EicoGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/multiwaveview/AnimationDrawableCallback;-><init>(Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->invalidate()V

    .line 452
    return-void
.end method

.method public onAnimationComplete()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 456
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #calls: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->stopSnapAnimation()V
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$300(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)V

    .line 457
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #calls: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->dispatchOnFinishFinalAnimation()V
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$400(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)V

    .line 460
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$500(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$500(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)I

    move-result v1

    #calls: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->dispatchTriggerEvent(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$600(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;I)V

    .line 462
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #setter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mActiveTarget:I
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$502(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;I)I

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->setGrabbedState(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$700(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;I)V

    .line 469
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 6
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 436
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 437
    .local v2, now:J
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-wide v4, v4, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapedAnimateTotalTime:J

    sub-long v0, v2, v4

    .line 438
    .local v0, diff:J
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v4, v4, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapedLastDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$200(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 439
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v4, v4, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapHandle:Landroid/os/Handler;

    invoke-virtual {v4, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v4, v4, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_0

    .line 442
    iget-object v4, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v4, v4, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 443
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "who"
    .parameter "what"

    .prologue
    const/4 v3, 0x0

    .line 422
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapHandle:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapHandle:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 424
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mSnapedAnimateTotalTime:J

    .line 425
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 427
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->invalidate()V

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$5;->onAnimationComplete()V

    .line 432
    :cond_1
    return-void
.end method
