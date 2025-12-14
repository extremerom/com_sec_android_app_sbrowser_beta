.class public final synthetic Lcom/sec/android/app/sbrowser/si_log/model/db/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/b;->b:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/b;->b:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;

    check-cast p1, LS2/a;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->c(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;LS2/a;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->i(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->b(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;LS2/a;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
