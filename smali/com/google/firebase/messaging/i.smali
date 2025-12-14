.class public final synthetic Lcom/google/firebase/messaging/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/google/firebase/messaging/i;->a:I

    iput-object p1, p0, Lcom/google/firebase/messaging/i;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)LR5/p;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/i;->b:Ljava/lang/String;

    iget p0, p0, Lcom/google/firebase/messaging/i;->a:I

    check-cast p1, Lcom/google/firebase/messaging/v;

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/google/firebase/messaging/FirebaseMessaging;->n:LO9/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/firebase/messaging/s;

    const-string v1, "U"

    invoke-direct {p0, v1, v0}, Lcom/google/firebase/messaging/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/v;->d(Lcom/google/firebase/messaging/s;)LR5/p;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/firebase/messaging/v;->f()V

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/firebase/messaging/FirebaseMessaging;->n:LO9/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/google/firebase/messaging/s;

    const-string v1, "S"

    invoke-direct {p0, v1, v0}, Lcom/google/firebase/messaging/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/google/firebase/messaging/v;->d(Lcom/google/firebase/messaging/s;)LR5/p;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/firebase/messaging/v;->f()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
