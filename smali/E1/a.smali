.class public final LE1/a;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final a:LE1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE1/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltb/m;-><init>(I)V

    sput-object v0, LE1/a;->a:LE1/a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
