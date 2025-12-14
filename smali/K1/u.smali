.class public final LK1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK1/t;


# static fields
.field public static final a:LK1/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LK1/u;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LK1/u;->a:LK1/u;

    return-void
.end method


# virtual methods
.method public final a()Lx1/r;
    .locals 1

    new-instance p0, LK1/w;

    sget-object v0, Lf2/d;->a:Lf2/d;

    invoke-direct {p0, v0}, LK1/w;-><init>(Lf2/h;)V

    return-object p0
.end method
