.class public abstract enum Lzc/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lzc/s;

.field public static final enum ACCEPT_NULL:Lzc/s;

.field public static final enum NOT_NULL:Lzc/s;

.field public static final enum START:Lzc/s;

.field public static final enum UNKNOWN:Lzc/s;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lzc/q;

    invoke-direct {v0}, Lzc/q;-><init>()V

    sput-object v0, Lzc/s;->START:Lzc/s;

    new-instance v1, Lzc/o;

    invoke-direct {v1}, Lzc/o;-><init>()V

    sput-object v1, Lzc/s;->ACCEPT_NULL:Lzc/s;

    new-instance v2, Lzc/r;

    invoke-direct {v2}, Lzc/r;-><init>()V

    sput-object v2, Lzc/s;->UNKNOWN:Lzc/s;

    new-instance v3, Lzc/p;

    invoke-direct {v3}, Lzc/p;-><init>()V

    sput-object v3, Lzc/s;->NOT_NULL:Lzc/s;

    const/4 v4, 0x4

    new-array v4, v4, [Lzc/s;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    sput-object v4, Lzc/s;->$VALUES:[Lzc/s;

    invoke-static {v4}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lzc/s;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static c(Lyc/d0;)Lzc/s;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lyc/w;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lzc/s;->ACCEPT_NULL:Lzc/s;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lyc/n;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lyc/n;

    :cond_1
    sget-object v0, Lzc/m;->a:Lzc/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzc/m;->g(Z)Lyc/K;

    move-result-object v0

    invoke-static {p0}, Lyc/c;->m(Lyc/w;)Lyc/A;

    move-result-object p0

    sget-object v1, Lyc/J;->b:Lyc/J;

    invoke-static {v0, p0, v1}, Lyc/c;->h(Lyc/K;LBc/e;Lyc/c;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lzc/s;->NOT_NULL:Lzc/s;

    goto :goto_0

    :cond_2
    sget-object p0, Lzc/s;->UNKNOWN:Lzc/s;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lzc/s;
    .locals 1

    const-class v0, Lzc/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzc/s;

    return-object p0
.end method

.method public static values()[Lzc/s;
    .locals 1

    sget-object v0, Lzc/s;->$VALUES:[Lzc/s;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzc/s;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lyc/d0;)Lzc/s;
.end method
