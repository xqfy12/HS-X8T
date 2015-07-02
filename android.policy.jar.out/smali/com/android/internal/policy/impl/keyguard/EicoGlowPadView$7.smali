.class Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EicoGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->getShowAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 15
    .parameter "animation"

    .prologue
    .line 841
    invoke-super/range {p0 .. p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 842
    const/4 v8, 0x0

    .line 843
    .local v8, index:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewXYPointList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$1000(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 844
    .local v9, listSize:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$1100(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;

    .line 845
    .local v14, v:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    if-le v9, v8, :cond_0

    .line 846
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewXYPointList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$1000(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v3

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;-><init>(FF)V

    invoke-virtual {v0, v8, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 852
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewXYPointList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$1000(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getX()F

    move-result v3

    invoke-virtual {v14}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->getY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/NetNodeValue;-><init>(FF)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 856
    .end local v14           #v:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$1200(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 857
    .local v11, size:I
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 858
    .local v13, swingTargetSet:Landroid/animation/AnimatorSet;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v12, swingList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v11, :cond_2

    .line 860
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mTargetDrawables:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$1200(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 861
    .local v1, tmpDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    const/high16 v2, 0x4170

    const/high16 v3, -0x3e90

    const-wide/16 v4, 0x2bc

    #calls: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->makeTargetSwingAnimator(Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;FFJ)Landroid/animation/ValueAnimator;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$1300(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;FFJ)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 863
    .local v10, ret:Landroid/animation/Animator;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 865
    .end local v1           #tmpDrawable:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    .end local v10           #ret:Landroid/animation/Animator;
    :cond_2
    invoke-virtual {v13, v12}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 866
    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    .line 867
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 871
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 872
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$7;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mViewPorxyList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$1100(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;

    .line 873
    .local v1, v:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 875
    .end local v1           #v:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    :cond_0
    return-void
.end method
