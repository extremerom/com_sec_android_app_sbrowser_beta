.class public final synthetic Lcom/sec/android/app/sbrowser/si_log/model/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/si_log/model/b;->a:I

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/b;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/b;->b:J

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;->b(JLjava/lang/Long;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/b;->b:J

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;->c(JLjava/lang/Long;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
