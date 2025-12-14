.class public final Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/appsearch/annotation/Document;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;",
        "",
        "java.com.google.android.libraries.llm.appfunctions.appfunctions_schema_appfunctions_schema"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:J

.field public final h:Ljava/lang/Long;

.field public final i:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JLjava/lang/Long;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "namespace"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timerState"

    invoke-static {p8, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->d:J

    iput-wide p6, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->e:J

    iput-object p8, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->f:Ljava/lang/String;

    iput-wide p9, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->g:J

    iput-object p11, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->h:Ljava/lang/Long;

    iput-object p12, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->i:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;

    iget-object v0, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->d:J

    iget-wide v2, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->e:J

    iget-wide v2, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->g:J

    iget-wide v2, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->h:Ljava/lang/Long;

    iget-object v1, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->h:Ljava/lang/Long;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->i:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->i:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 10

    iget-wide v0, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v0, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v0, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->h:Ljava/lang/Long;

    iget-object v9, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->i:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/appfunctions/schema/common/v1/clock/Timer;->f:Ljava/lang/String;

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
