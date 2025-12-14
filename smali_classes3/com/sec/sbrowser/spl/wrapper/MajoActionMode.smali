.class public Lcom/sec/sbrowser/spl/wrapper/MajoActionMode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SEM_TYPE_FLOATING:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-class v1, Landroid/view/ActionMode;

    const-string v2, "SEM_TYPE_FLOATING"

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoActionMode;->SEM_TYPE_FLOATING:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method
