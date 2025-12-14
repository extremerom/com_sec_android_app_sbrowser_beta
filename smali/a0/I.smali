.class public final La0/I;
.super La0/g0;
.source "SourceFile"


# instance fields
.field public final b:La0/A0;


# direct methods
.method public constructor <init>(La0/A0;Lsb/a;)V
    .locals 0

    invoke-direct {p0, p2}, La0/g0;-><init>(Lsb/a;)V

    iput-object p1, p0, La0/I;->b:La0/A0;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)La0/h0;
    .locals 7

    new-instance v6, La0/h0;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x1

    iget-object v4, p0, La0/I;->b:La0/A0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, La0/h0;-><init>(La0/g0;Ljava/lang/Object;ZLa0/A0;Z)V

    return-object v6
.end method
