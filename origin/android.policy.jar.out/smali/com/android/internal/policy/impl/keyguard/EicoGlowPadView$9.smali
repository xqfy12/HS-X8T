.class Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EicoGlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->gone(IJJ)Landroid/animation/AnimatorSet;
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
    .line 1827
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1830
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

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

    .line 1831
    .local v1, v:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    .line 1832
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setEnabled(Z)V

    goto :goto_0

    .line 1834
    .end local v1           #v:Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->mLineViewList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$1500(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    .line 1835
    .local v1, v:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    .line 1836
    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setEnabled(Z)V

    goto :goto_1

    .line 1839
    .end local v1           #v:Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    #calls: Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->playSnapAnimation()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->access$1600(Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;)V

    .line 1844
    return-void
.end method
