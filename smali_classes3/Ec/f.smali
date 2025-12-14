.class public final LEc/f;
.super LEc/g;
.source "SourceFile"


# static fields
.field public static final b:LEc/f;

.field public static final c:LEc/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LEc/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LEc/g;-><init>(Z)V

    sput-object v0, LEc/f;->b:LEc/f;

    new-instance v0, LEc/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LEc/g;-><init>(Z)V

    sput-object v0, LEc/f;->c:LEc/f;

    return-void
.end method
