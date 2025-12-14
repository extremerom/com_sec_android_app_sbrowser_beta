.class public final synthetic Lcom/sec/android/app/sbrowser/extensions/trans/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(J[Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->a:I

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->b:J

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->c:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->o(J[Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->c:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->q(J[Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->c:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->l(J[Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->c:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->t(J[Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->c:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->e(J[Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->c:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->g(J[Ljava/lang/String;)V

    return-void

    :pswitch_5
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->c:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->a(J[Ljava/lang/String;)V

    return-void

    :pswitch_6
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->c:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->m(J[Ljava/lang/String;)V

    return-void

    :pswitch_7
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->c:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->d(J[Ljava/lang/String;)V

    return-void

    :pswitch_8
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->c:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->f(J[Ljava/lang/String;)V

    return-void

    :pswitch_9
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/d;->c:[Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->i(J[Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
