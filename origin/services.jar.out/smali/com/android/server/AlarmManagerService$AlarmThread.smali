.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 1110
    const-string v0, "AlarmManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1111
    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 1117
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDescriptor:I
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)I

    move-result v4

    #calls: Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I
    invoke-static {v3, v4}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;I)I

    move-result v20

    .line 1119
    .local v20, result:I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    .local v21, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/high16 v3, 0x1

    and-int v3, v3, v20

    if-eqz v3, :cond_0

    .line 1122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1124
    new-instance v14, Landroid/content/Intent;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v14, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1125
    .local v14, intent:Landroid/content/Intent;
    const/high16 v3, 0x2800

    invoke-virtual {v14, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v14, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1130
    .end local v14           #intent:Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22

    .line 1131
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1132
    .local v18, nowRTC:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 1137
    .local v16, nowELAPSED:J
    and-int/lit8 v3, v20, 0x1

    if-eqz v3, :cond_1

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v3, v4, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 1140
    :cond_1
    and-int/lit8 v3, v20, 0x2

    if-eqz v3, :cond_2

    .line 1141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v3, v4, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 1143
    :cond_2
    and-int/lit8 v3, v20, 0x4

    if-eqz v3, :cond_3

    .line 1144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v3, v4, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 1146
    :cond_3
    and-int/lit8 v3, v20, 0x8

    if-eqz v3, :cond_4

    .line 1147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v3, v4, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 1149
    :cond_4
    and-int/lit8 v3, v20, 0x20

    if-eqz v3, :cond_5

    .line 1150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcPoweronAlarms:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v3, v4, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 1153
    :cond_5
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1154
    .local v15, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_6
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1155
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$Alarm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1158
    .local v9, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_1
    iget-object v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1300()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.intent.extra.ALARM_COUNT"

    iget v8, v9, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)I

    move-result v3

    if-nez v3, :cond_7

    .line 1165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v9, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1168
    :cond_7
    new-instance v13, Lcom/android/server/AlarmManagerService$InFlight;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v9, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-direct {v13, v3, v4}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)V

    .line 1170
    .local v13, inflight:Lcom/android/server/AlarmManagerService$InFlight;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$1608(Lcom/android/server/AlarmManagerService;)I

    .line 1173
    iget-object v10, v13, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1174
    .local v10, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 1175
    iget v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v3, :cond_9

    .line 1176
    const/4 v3, 0x1

    iput v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 1177
    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 1181
    :goto_2
    iget-object v12, v13, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 1182
    .local v12, fs:Lcom/android/server/AlarmManagerService$FilterStats;
    iget v3, v12, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v12, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 1183
    iget v3, v12, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v3, :cond_a

    .line 1184
    const/4 v3, 0x1

    iput v3, v12, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 1185
    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 1189
    :goto_3
    iget v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8

    iget v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v3, :cond_6

    .line 1191
    :cond_8
    iget v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 1192
    iget v3, v12, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v12, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 1193
    iget-object v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v3}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1196
    .end local v10           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v12           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v13           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :catch_0
    move-exception v11

    .line 1197
    .local v11, e:Landroid/app/PendingIntent$CanceledException;
    :try_start_2
    iget-wide v3, v9, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    .line 1200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v9, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 1206
    .end local v9           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v11           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v15           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v16           #nowELAPSED:J
    .end local v18           #nowRTC:J
    :catchall_0
    move-exception v3

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1179
    .restart local v9       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v10       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v13       #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    .restart local v15       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v16       #nowELAPSED:J
    .restart local v18       #nowRTC:J
    :cond_9
    :try_start_3
    iget v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1202
    .end local v10           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :catch_1
    move-exception v11

    .line 1203
    .local v11, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v3, "AlarmManager"

    const-string v4, "Failure sending alarm."

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1187
    .end local v11           #e:Ljava/lang/RuntimeException;
    .restart local v10       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v12       #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v13       #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_a
    :try_start_5
    iget v3, v12, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v12, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 1206
    .end local v9           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v10           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v12           #fs:Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v13           #inflight:Lcom/android/server/AlarmManagerService$InFlight;
    :cond_b
    :try_start_6
    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method
