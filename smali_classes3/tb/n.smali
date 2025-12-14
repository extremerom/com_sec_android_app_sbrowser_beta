.class public final Ltb/n;
.super Ltb/r;
.source "SourceFile"

# interfaces
.implements LAb/i;
.implements LAb/j;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    sget-object v1, Ltb/c;->NO_RECEIVER:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ltb/r;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()LAb/n;
    .locals 0

    invoke-virtual {p0}, Ltb/n;->b()LAb/q;

    move-result-object p0

    return-object p0
.end method

.method public final b()LAb/q;
    .locals 0

    invoke-virtual {p0}, Ltb/r;->a()LAb/u;

    move-result-object p0

    check-cast p0, LAb/i;

    invoke-interface {p0}, LAb/r;->b()LAb/q;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic c()LAb/g;
    .locals 0

    invoke-virtual {p0}, Ltb/n;->c()LAb/h;

    move-result-object p0

    return-object p0
.end method

.method public final c()LAb/h;
    .locals 0

    invoke-virtual {p0}, Ltb/r;->a()LAb/u;

    move-result-object p0

    check-cast p0, LAb/i;

    invoke-interface {p0}, LAb/i;->c()LAb/h;

    move-result-object p0

    return-object p0
.end method

.method public final computeReflected()LAb/b;
    .locals 1

    sget-object v0, Ltb/x;->a:Ltb/y;

    invoke-virtual {v0, p0}, Ltb/y;->d(Ltb/n;)LAb/i;

    move-result-object p0

    return-object p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ltb/n;->b()LAb/q;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    check-cast p0, LDb/s;

    invoke-virtual {p0, p1}, LDb/s;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ltb/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
