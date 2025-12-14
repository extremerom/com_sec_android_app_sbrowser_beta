.class public final Lz0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz0/g;

.field public static final b:Lz0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz0/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz0/g;-><init>(I)V

    sput-object v0, Lz0/h;->a:Lz0/g;

    new-instance v0, Lz0/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lz0/g;-><init>(I)V

    sput-object v0, Lz0/h;->b:Lz0/g;

    return-void
.end method
