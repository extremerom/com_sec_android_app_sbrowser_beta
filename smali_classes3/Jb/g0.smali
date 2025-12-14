.class public final LJb/g0;
.super LJb/k0;
.source "SourceFile"


# static fields
.field public static final c:LJb/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJb/g0;

    const-string v1, "protected"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LJb/k0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LJb/g0;->c:LJb/g0;

    return-void
.end method
