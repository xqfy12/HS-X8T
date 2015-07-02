.class public Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;
.super Landroid/widget/TextView;
.source "ClockViewTextView.java"


# static fields
.field private static final ANDROID_CLOCK_FONT_FILE:Ljava/lang/String; = "/system/fonts/Roboto-Thin.ttf"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->mPaint:Landroid/graphics/Paint;

    .line 34
    const/16 v1, 0x2d

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->x:I

    .line 35
    const/16 v1, 0x78

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->y:I

    .line 40
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->mContext:Landroid/content/Context;

    .line 41
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->mPaint:Landroid/graphics/Paint;

    .line 43
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v0, v1

    .line 44
    .local v0, fontsize:F
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 45
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->mPaint:Landroid/graphics/Paint;

    const-string v2, "/system/fonts/Roboto-Thin.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 47
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 54
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->x:I

    .line 58
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->y:I

    .line 59
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 61
    :cond_0
    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockViewTextView;->x:I

    goto :goto_0
.end method
