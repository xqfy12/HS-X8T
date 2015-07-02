.class Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$3;
.super Ljava/lang/Object;
.source "EicoGlowPadView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/NetNodeProxy$NotifyChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;
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
    .line 234
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeValue(Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;Lcom/android/internal/policy/impl/keyguard/NetNodeValue;)V
    .locals 2
    .parameter "nodeProxy"
    .parameter "newValue"

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;->getView()Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EicoTargetDrawable;->setAlpha(F)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/EicoGlowPadView;->changeNodeValue(Lcom/android/internal/policy/impl/keyguard/NetNodeProxy;Lcom/android/internal/policy/impl/keyguard/NetNodeValue;)V

    .line 240
    return-void
.end method
