.class public final LC0/h;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final b:LC0/h;

.field public static final c:LC0/h;

.field public static final d:LC0/h;

.field public static final e:LC0/h;

.field public static final f:LC0/h;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LC0/h;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LC0/h;-><init>(II)V

    sput-object v0, LC0/h;->b:LC0/h;

    new-instance v0, LC0/h;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LC0/h;-><init>(II)V

    sput-object v0, LC0/h;->c:LC0/h;

    new-instance v0, LC0/h;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LC0/h;-><init>(II)V

    sput-object v0, LC0/h;->d:LC0/h;

    new-instance v0, LC0/h;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LC0/h;-><init>(II)V

    sput-object v0, LC0/h;->e:LC0/h;

    new-instance v0, LC0/h;

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LC0/h;-><init>(II)V

    sput-object v0, LC0/h;->f:LC0/h;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LC0/h;->a:I

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, LC0/h;->a:I

    packed-switch p0, :pswitch_data_0

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    return-object p1

    :pswitch_0
    check-cast p1, LC0/a;

    check-cast p2, LC0/a;

    new-instance p0, LC0/a;

    if-eqz p1, :cond_1

    iget-object v0, p1, LC0/a;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p2, LC0/a;->a:Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p1, LC0/a;->b:Ldb/b;

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, p2, LC0/a;->b:Ldb/b;

    :cond_4
    invoke-direct {p0, v0, p1}, LC0/a;-><init>(Ljava/lang/String;Ldb/b;)V

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    return-object p1

    :pswitch_2
    check-cast p1, LC0/c;

    check-cast p2, LC0/c;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1

    :pswitch_3
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    if-eqz p1, :cond_5

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lfb/n;->i0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object p2, p0

    :cond_5
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
