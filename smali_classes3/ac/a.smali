.class public final Lac/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final b:Lac/a;

.field public static final c:Lac/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lac/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lac/a;-><init>(I)V

    sput-object v0, Lac/a;->b:Lac/a;

    new-instance v0, Lac/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lac/a;-><init>(I)V

    sput-object v0, Lac/a;->c:Lac/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lac/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lac/a;->a:I

    check-cast p1, Lac/d;

    check-cast p2, Lac/q;

    packed-switch p0, :pswitch_data_0

    const-string p0, "$this$loadConstantFromProperty"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lac/d;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "$this$loadConstantFromProperty"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "it"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lac/d;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
