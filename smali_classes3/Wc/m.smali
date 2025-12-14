.class public final LWc/m;
.super LNc/x;
.source "SourceFile"


# static fields
.field public static final b:LWc/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LWc/m;

    invoke-direct {v0}, LNc/x;-><init>()V

    sput-object v0, LWc/m;->b:LWc/m;

    return-void
.end method


# virtual methods
.method public final G(Lib/h;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p0, LWc/f;->c:LWc/f;

    sget-object p1, LWc/l;->h:LEc/p;

    iget-object p0, p0, LWc/i;->b:LWc/d;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, LWc/d;->b(Ljava/lang/Runnable;LEc/p;Z)V

    return-void
.end method

.method public final J(I)LNc/x;
    .locals 1

    invoke-static {p1}, LUc/a;->b(I)V

    sget v0, LWc/l;->d:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, LNc/x;->J(I)LNc/x;

    move-result-object p0

    return-object p0
.end method

.method public final v(Lib/h;Ljava/lang/Runnable;)V
    .locals 1

    sget-object p0, LWc/f;->c:LWc/f;

    sget-object p1, LWc/l;->h:LEc/p;

    iget-object p0, p0, LWc/i;->b:LWc/d;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, LWc/d;->b(Ljava/lang/Runnable;LEc/p;Z)V

    return-void
.end method
