.class public final synthetic Lcom/sec/android/app/sbrowser/si_log/model/db/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/a;->b:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/a;->c:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/a;->a:I

    check-cast p1, LS2/a;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/a;->b:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/a;->c:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->a(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;LS2/a;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/a;->b:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/a;->c:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->h(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
