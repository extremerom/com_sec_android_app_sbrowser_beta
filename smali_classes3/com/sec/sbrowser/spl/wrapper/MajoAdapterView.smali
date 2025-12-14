.class public Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView$SemMultiSelectionListener;,
        Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView$LongPressMultiSelectionListener;,
        Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView$OnMultiSelectedListener;
    }
.end annotation


# static fields
.field private static final sLongPressMultiSelectionListenerClass:Ljava/lang/Class;

.field private static final sOnMultiSelectedListenerClass:Ljava/lang/Class;

.field private static final sSemMultiSelectionListenerClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.widget.AdapterView$SemOnMultiSelectedListener"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->sOnMultiSelectedListenerClass:Ljava/lang/Class;

    const-string v0, "android.widget.AdapterView$SemMultiSelectionListener"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->sSemMultiSelectionListenerClass:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string v0, "android.widget.AdapterView$OnTwMultiSelectedListener"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->sOnMultiSelectedListenerClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->sSemMultiSelectionListenerClass:Ljava/lang/Class;

    :goto_0
    const-string v0, "android.widget.AdapterView$SemLongPressMultiSelectionListener"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->sLongPressMultiSelectionListenerClass:Ljava/lang/Class;

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->sLongPressMultiSelectionListenerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static bridge synthetic b()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->sOnMultiSelectedListenerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static bridge synthetic c()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->sSemMultiSelectionListenerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getLongPressMultiSelectionListener()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->sLongPressMultiSelectionListenerClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getOnMultiSelectedListener()Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->sOnMultiSelectedListenerClass:Ljava/lang/Class;

    return-object v0
.end method
