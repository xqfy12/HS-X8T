.class Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;
.super Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;
.source "EicoGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->loadAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/keyguard/AnimationDrawableCallback;-><init>(Landroid/graphics/drawable/AnimationDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->invalidate()V

    .line 495
    return-void
.end method

.method public onAnimationComplete()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #calls: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->stopSnapAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$700(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #calls: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->dispatchOnFinishFinalAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$800(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->setGrabbedState(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$900(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;I)V

    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->resourceRelease()V

    .line 503
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 2
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapedLastDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$600(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$500(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 487
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 4
    .parameter "who"
    .parameter "what"

    .prologue
    const/4 v3, 0x0

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$500(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapHandle:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$500(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mSnapedAnimateTotalTime:J

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    .line 471
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->snapedAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->setAlpha(I)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->invalidate()V

    .line 474
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$6;->onAnimationComplete()V

    .line 476
    :cond_1
    return-void
.end method
