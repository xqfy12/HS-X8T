.class public Lcom/android/internal/widget/multiwaveview/NetNodeValue;
.super Ljava/lang/Object;
.source "NetNodeValue.java"


# instance fields
.field public alpha:F

.field public scale:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f80

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->scale:F

    .line 25
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->alpha:F

    .line 29
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v0, 0x3f80

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->scale:F

    .line 25
    iput v0, p0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->alpha:F

    .line 32
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->x:F

    .line 33
    iput p2, p0, Lcom/android/internal/widget/multiwaveview/NetNodeValue;->y:F

    .line 34
    return-void
.end method
