.class public final LJb/e0;
.super LJb/k0;
.source "SourceFile"


# static fields
.field public static final c:LJb/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJb/e0;

    const-string v1, "private"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LJb/k0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LJb/e0;->c:LJb/e0;

    return-void
.end method
