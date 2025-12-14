.class public final LLa/b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:LLa/c;


# direct methods
.method public constructor <init>(LLa/c;)V
    .locals 0

    iput-object p1, p0, LLa/b;->a:LLa/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object p0, p0, LLa/b;->a:LLa/c;

    iget-object v0, p0, LLa/c;->a:LLa/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, LLa/c;->b:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, LLa/c;->f:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xdbba0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const-string v1, "La.c"

    const-string v2, "Unbinding from the service."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, LLa/c;->a:LLa/a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, LLa/c;->a:LLa/a;

    :cond_0
    return-void
.end method
