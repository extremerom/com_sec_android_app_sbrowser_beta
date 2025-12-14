.class public final La0/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/g;
.implements La0/A0;


# static fields
.field public static final synthetic b:La0/V;

.field public static final c:La0/V;

.field public static final d:La0/V;

.field public static final e:La0/V;

.field public static final f:La0/V;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, La0/V;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La0/V;-><init>(I)V

    sput-object v0, La0/V;->b:La0/V;

    new-instance v0, La0/V;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, La0/V;-><init>(I)V

    sput-object v0, La0/V;->c:La0/V;

    new-instance v0, La0/V;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, La0/V;-><init>(I)V

    sput-object v0, La0/V;->d:La0/V;

    new-instance v0, La0/V;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, La0/V;-><init>(I)V

    sput-object v0, La0/V;->e:La0/V;

    new-instance v0, La0/V;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, La0/V;-><init>(I)V

    sput-object v0, La0/V;->f:La0/V;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, La0/V;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(La0/V;)V
    .locals 9

    sget-object v0, La0/p0;->w:LQc/A0;

    :cond_0
    sget-object v0, La0/p0;->w:LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld0/b;

    move-object v2, v1

    check-cast v2, Lg0/b;

    iget-object v3, v2, Lg0/b;->c:Lf0/c;

    invoke-virtual {v3, p0}, Lf0/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg0/a;

    if-nez v4, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v5, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    iget-object v7, v3, Lf0/c;->a:Lf0/l;

    invoke-virtual {v7, v6, p0, v5}, Lf0/l;->v(ILa0/V;I)Lf0/l;

    move-result-object v6

    const/4 v8, 0x1

    if-ne v7, v6, :cond_3

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    sget-object v3, Lf0/c;->c:Lf0/c;

    goto :goto_1

    :cond_4
    new-instance v7, Lf0/c;

    iget v3, v3, Lf0/c;->b:I

    sub-int/2addr v3, v8

    invoke-direct {v7, v6, v3}, Lf0/c;-><init>(Lf0/l;I)V

    move-object v3, v7

    :goto_1
    sget-object v6, Lh0/b;->a:Lh0/b;

    iget-object v7, v4, Lg0/a;->a:Ljava/lang/Object;

    if-eq v7, v6, :cond_5

    move v5, v8

    :cond_5
    iget-object v4, v4, Lg0/a;->b:Ljava/lang/Object;

    if-eqz v5, :cond_6

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v5, Lg0/a;

    new-instance v8, Lg0/a;

    iget-object v5, v5, Lg0/a;->a:Ljava/lang/Object;

    invoke-direct {v8, v5, v4}, Lg0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7, v8}, Lf0/c;->a(Ljava/lang/Object;Lg0/a;)Lf0/c;

    move-result-object v3

    :cond_6
    if-eq v4, v6, :cond_7

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v5, Lg0/a;

    new-instance v8, Lg0/a;

    iget-object v5, v5, Lg0/a;->b:Ljava/lang/Object;

    invoke-direct {v8, v7, v5}, Lg0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v8}, Lf0/c;->a(Ljava/lang/Object;Lg0/a;)Lf0/c;

    move-result-object v3

    :cond_7
    if-eq v7, v6, :cond_8

    iget-object v5, v2, Lg0/b;->a:Ljava/lang/Object;

    goto :goto_2

    :cond_8
    move-object v5, v4

    :goto_2
    if-eq v4, v6, :cond_9

    iget-object v7, v2, Lg0/b;->b:Ljava/lang/Object;

    :cond_9
    new-instance v2, Lg0/b;

    invoke-direct {v2, v5, v7, v3}, Lg0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lf0/c;)V

    :goto_3
    if-eq v1, v2, :cond_a

    invoke-virtual {v0, v1, v2}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_a
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, La0/V;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, La0/V;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "Empty"

    return-object p0

    :pswitch_2
    const-string p0, "StructuralEqualityPolicy"

    return-object p0

    :pswitch_3
    const-string p0, "ReferentialEqualityPolicy"

    return-object p0

    :pswitch_4
    const-string p0, "NeverEqualPolicy"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
