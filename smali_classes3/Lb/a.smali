.class public final LLb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LLb/b;
.implements LLb/d;


# static fields
.field public static final b:LLb/a;

.field public static final c:LLb/a;

.field public static final d:LLb/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LLb/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LLb/a;-><init>(I)V

    sput-object v0, LLb/a;->b:LLb/a;

    new-instance v0, LLb/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LLb/a;-><init>(I)V

    sput-object v0, LLb/a;->c:LLb/a;

    new-instance v0, LLb/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LLb/a;-><init>(I)V

    sput-object v0, LLb/a;->d:LLb/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LLb/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LJb/f;)Ljava/util/Collection;
    .locals 0

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public b(LJb/f;Lwc/s;)Z
    .locals 0

    iget p0, p0, LLb/a;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, LF3/f;->u()LKb/h;

    move-result-object p0

    sget-object p1, LLb/e;->a:Lhc/c;

    invoke-interface {p0, p1}, LKb/h;->m0(Lhc/c;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_0
    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public c(LJb/f;)Ljava/util/Collection;
    .locals 0

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public d(Lhc/f;LJb/f;)Ljava/util/Collection;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "classDescriptor"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public e(LJb/f;)Ljava/util/Collection;
    .locals 0

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method
