.class public final Lb0/f;
.super Lb0/C;
.source "SourceFile"


# static fields
.field public static final c:Lb0/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb0/f;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Lb0/C;-><init>(III)V

    sput-object v0, Lb0/f;->c:Lb0/f;

    return-void
.end method


# virtual methods
.method public final a(LN/h;LJ2/i0;La0/y0;LB0/M;)V
    .locals 0

    invoke-static {p3, p4}, La0/d;->x(La0/y0;LB0/M;)V

    return-void
.end method
