.class Landroid/widget/AnalogClock$1;
.super Landroid/content/BroadcastReceiver;
.source "AnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AnalogClock;


# direct methods
.method constructor <init>(Landroid/widget/AnalogClock;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    #getter for: Landroid/widget/AnalogClock;->mManualTimeZone:Z
    invoke-static {v1}, Landroid/widget/AnalogClock;->access$000(Landroid/widget/AnalogClock;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    #getter for: Landroid/widget/AnalogClock;->mTimeZoneId:Ljava/lang/String;
    invoke-static {v1}, Landroid/widget/AnalogClock;->access$100(Landroid/widget/AnalogClock;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 298
    :cond_0
    const-string/jumbo v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    new-instance v2, Landroid/text/format/Time;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #setter for: Landroid/widget/AnalogClock;->mCalendar:Landroid/text/format/Time;
    invoke-static {v1, v2}, Landroid/widget/AnalogClock;->access$202(Landroid/widget/AnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 302
    .end local v0           #tz:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    #calls: Landroid/widget/AnalogClock;->onTimeChanged()V
    invoke-static {v1}, Landroid/widget/AnalogClock;->access$300(Landroid/widget/AnalogClock;)V

    .line 304
    iget-object v1, p0, Landroid/widget/AnalogClock$1;->this$0:Landroid/widget/AnalogClock;

    invoke-virtual {v1}, Landroid/widget/AnalogClock;->invalidate()V

    goto :goto_0
.end method