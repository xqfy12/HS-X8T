.class Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$2;
.super Ljava/lang/Object;
.source "EicoGlowPadView.java"

# interfaces
.implements Lcom/android/internal/widget/multiwaveview/NetNodeProxy$NotifyChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;
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
    .line 208
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$2;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeValue(Lcom/android/internal/widget/multiwaveview/NetNodeProxy;Lcom/android/internal/widget/multiwaveview/NetNodeValue;)V
    .locals 2
    .parameter "nodeProxy"
    .parameter "newValue"

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/android/internal/widget/multiwaveview/NetNodeProxy;->getView()Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/EicoTargetDrawable;->setAlpha(F)V

    .line 213
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView$2;->this$0:Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/multiwaveview/EicoGlowPadView;->changeNodeValue(Lcom/android/internal/widget/multiwaveview/NetNodeProxy;Lcom/android/internal/widget/multiwaveview/NetNodeValue;)V

    .line 214
    return-void
.end method
