.class public final synthetic Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/a;->a:I

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/a;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/a;->b:J

    check-cast p1, LS2/a;

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->e(JLS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/a;->b:J

    check-cast p1, LS2/a;

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->b(JLS2/a;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/a;->b:J

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao$DefaultImpls;->a(JLjava/lang/String;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
