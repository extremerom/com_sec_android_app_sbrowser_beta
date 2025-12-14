.class public final LA1/f;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final b:LA1/f;

.field public static final c:LA1/f;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LA1/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LA1/f;-><init>(II)V

    sput-object v0, LA1/f;->b:LA1/f;

    new-instance v0, LA1/f;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LA1/f;-><init>(II)V

    sput-object v0, LA1/f;->c:LA1/f;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LA1/f;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, LA1/f;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ly1/f;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :pswitch_0
    check-cast p1, Ly1/f;

    const-string p0, "it"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
