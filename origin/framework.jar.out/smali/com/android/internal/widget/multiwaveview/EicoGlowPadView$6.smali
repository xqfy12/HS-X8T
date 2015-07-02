.class Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EicoGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->getShowAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$6;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 14
    .parameter "animation"

    .prologue
    .line 538
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 539
    const/4 v8, 0x0

    .line 540
    .local v8, index:I
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$6;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$800(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;

    .line 541
    .local v13, v:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$6;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewXYPointList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$900(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$6;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewXYPointList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$900(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lcom/android/internal/widget/multiwaveview/NetNodeValue;

    invoke-virtual {v13}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v3

    invoke-virtual {v13}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/widget/multiwaveview/NetNodeValue;-><init>(FF)V

    invoke-virtual {v0, v8, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 548
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$6;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewXYPointList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$900(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lcom/android/internal/widget/multiwaveview/NetNodeValue;

    invoke-virtual {v13}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getX()F

    move-result v3

    invoke-virtual {v13}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->getY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/widget/multiwaveview/NetNodeValue;-><init>(FF)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 552
    .end local v13           #v:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$6;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$1000(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 553
    .local v10, size:I
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 554
    .local v12, swingTargetSet:Landroid/animation/AnimatorSet;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v11, swingList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v10, :cond_2

    .line 556
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$6;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$1000(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    .line 557
    .local v1, tmpDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$6;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    const/high16 v2, 0x4170

    const/high16 v3, -0x3e90

    const-wide/16 v4, 0x2bc

    #calls: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->makeTargetSwingAnimator(Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;FFJ)Landroid/animation/ValueAnimator;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$1100(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;FFJ)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 559
    .local v9, ret:Landroid/animation/Animator;
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 561
    .end local v1           #tmpDrawable:Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;
    .end local v9           #ret:Landroid/animation/Animator;
    :cond_2
    invoke-virtual {v12, v11}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 562
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 563
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 567
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 568
    iget-object v2, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$6;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->access$800(Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;

    .line 569
    .local v1, v:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 571
    .end local v1           #v:Lcom/android/internal/widget/multiwaveview/NetNodeProxy;
    :cond_0
    return-void
.end method
