.class public Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;
.super Ljava/lang/Object;
.source "BubbleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/BubbleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BubbleValue"
.end annotation


# static fields
.field public static final ALPHA_MAX:I = 0xff


# instance fields
.field public alpha:I

.field public scale:F

.field public x:F

.field public y:F


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v0, 0x3f80

    .line 206
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;-><init>(FFFF)V

    .line 207
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "scale"
    .parameter "alpha"

    .prologue
    .line 195
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p1, p0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->x:F

    .line 197
    iput p2, p0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->y:F

    .line 198
    iput p3, p0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    .line 199
    const/high16 v0, 0x437f

    mul-float/2addr v0, p4

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    .line 200
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "scale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->scale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "alpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/multiwaveview/BubbleView$BubbleValue;->alpha:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method
