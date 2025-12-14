.class public final enum Le7/e;
.super Le7/i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "EQ"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lm7/b;)Lk7/n;
    .locals 3

    sget-object p0, Lk7/o;->A:Lk7/n;

    sget-object v0, Lk7/o;->G:Lk7/n;

    sget-object v1, Lk7/o;->s:Lk7/n;

    sget-object v2, Lk7/o;->y:Lk7/n;

    invoke-static {p1, v1, v2, p0, v0}, Lk7/o;->a(Lm7/e;Lk7/n;Lk7/n;Lk7/n;Lk7/n;)Lk7/n;

    move-result-object p0

    return-object p0
.end method
