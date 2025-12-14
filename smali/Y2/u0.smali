.class public abstract LY2/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LY2/d;

.field public static final b:LY2/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LY2/d;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, LY2/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, LY2/u0;->a:LY2/d;

    new-instance v0, LY2/d;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, LY2/d;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, LY2/u0;->b:LY2/d;

    return-void
.end method
