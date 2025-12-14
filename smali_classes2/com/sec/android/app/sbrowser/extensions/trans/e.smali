.class public final synthetic Lcom/sec/android/app/sbrowser/extensions/trans/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;J)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->a:I

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->b:J

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->p(JLjava/lang/String;)V

    return-void

    :pswitch_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->v(JLjava/lang/String;)V

    return-void

    :pswitch_1
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->k(JLjava/lang/String;)V

    return-void

    :pswitch_2
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->s(JLjava/lang/String;)V

    return-void

    :pswitch_3
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->c(JLjava/lang/String;)V

    return-void

    :pswitch_4
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->b(JLjava/lang/String;)V

    return-void

    :pswitch_5
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/e;->c:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->u(JLjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
