.class public final synthetic LA7/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/d;
.implements LR5/a;


# static fields
.field public static final b:LA7/f;

.field public static final c:LA7/f;

.field public static final d:LA7/f;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LA7/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LA7/f;-><init>(I)V

    sput-object v0, LA7/f;->b:LA7/f;

    new-instance v0, LA7/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LA7/f;-><init>(I)V

    sput-object v0, LA7/f;->c:LA7/f;

    new-instance v0, LA7/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LA7/f;-><init>(I)V

    sput-object v0, LA7/f;->d:LA7/f;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LA7/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(LA7/c;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, LA7/f;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/google/firebase/iid/Registrar;->lambda$getComponents$1$Registrar(Lcom/google/firebase/components/c;)LB7/a;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p1}, Lcom/google/firebase/iid/Registrar;->lambda$getComponents$0$Registrar(Lcom/google/firebase/components/c;)Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public m(LR5/h;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, LR5/h;->i()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LA7/d;

    iget-object p0, p0, LA7/d;->a:Ljava/lang/String;

    return-object p0
.end method
