.class public final synthetic Lcom/sec/android/app/sbrowser/common/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/c;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/utils/c;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lz3/x;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/c;->b:Ljava/lang/Object;

    check-cast p0, Lz3/g;

    invoke-direct {v0, p0}, Lz3/x;-><init>(Ljava/lang/Object;)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lz3/k;->c(Ljava/io/InputStream;Ljava/lang/String;)Lz3/x;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/c;->b:Ljava/lang/Object;

    check-cast p0, LO9/a;

    iget-object p0, p0, LO9/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->c()Lo3/e;

    move-result-object v0

    const-string v1, "next_alarm_manager_id"

    invoke-virtual {v0, v1}, Lo3/e;->g(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const v3, 0x7fffffff

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    :goto_1
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->c()Lo3/e;

    move-result-object p0

    new-instance v3, Lo3/d;

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lo3/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0, v3}, Lo3/e;->l(Lo3/d;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/c;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
