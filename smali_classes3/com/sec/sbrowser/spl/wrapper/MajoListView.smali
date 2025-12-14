.class public Lcom/sec/sbrowser/spl/wrapper/MajoListView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sSemSetBottomColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemSetCtrlKeyPressed:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemSetDragBlockEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemSetLongPressMultiSelectionEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemSetLongPressMultiSelectionListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemSetMultiSelectedListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemSetRoundedCornerColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemSetRoundedCorners:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSemSetSmoothScrollEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetEnableDragBlock:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetMultiSelectedListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

.field private static sSetSmoothScrollEnable:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->getOnMultiSelectedListener()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/widget/ListView;

    const-string v3, "semSetOnMultiSelectedListener"

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetMultiSelectedListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->getLongPressMultiSelectionListener()Ljava/lang/Class;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v3, "semSetLongPressMultiSelectionListener"

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetLongPressMultiSelectionListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "semSetLongPressMultiSelectionEnabled"

    invoke-direct {v0, v2, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetLongPressMultiSelectionEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v3, "semSetDragBlockEnabled"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetDragBlockEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v3, "semSetSmoothScrollEnabled"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetSmoothScrollEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v3, "semSetCtrlKeyPressed"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetCtrlKeyPressed:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView;->getOnMultiSelectedListener()Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setTwMultiSelectedListener"

    invoke-direct {v0, v2, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSetMultiSelectedListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v3, "setEnableDragBlock"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSetEnableDragBlock:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v3, "twSetSmoothScrollEnable"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSetSmoothScrollEnable:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "semSetBottomColor"

    invoke-direct {v0, v2, v4, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetBottomColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v2, "semSetRoundedCornerColor"

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/view/View;

    invoke-direct {v0, v4, v2, v3}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetRoundedCornerColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    const-string v2, "semSetRoundedCorners"

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v4, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetRoundedCorners:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "setOnMultiSelectedListener"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSetMultiSelectedListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "setEnableDragBlock"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSetEnableDragBlock:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "semSetOnMultiSelectedListener"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetMultiSelectedListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "semSetDragBlockEnabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetDragBlockEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_3
    const-string v0, "twSetSmoothScrollEnable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSetSmoothScrollEnable:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "semSetSmoothScrollEnabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetSmoothScrollEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_5
    const-string v0, "semSetCtrlKeyPressed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetCtrlKeyPressed:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_6
    const-string v0, "setLongPressMultiSelectionListener"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetLongPressMultiSelectionListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_7
    const-string v0, "setLongPressMultiSelectionEnabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetLongPressMultiSelectionEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_8
    const-string v0, "semSetBottomColor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetBottomColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_9
    const-string v0, "semSetRoundedCornerColor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetRoundedCornerColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_a
    const-string v0, "semSetRoundedCorners"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetRoundedCorners:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static setBottomColor(Landroid/widget/ListView;I)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetBottomColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setCtrlKeyPressed(Landroid/widget/ListView;Z)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetCtrlKeyPressed:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setEnableDragBlock(Landroid/widget/ListView;Z)V
    .locals 1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetDragBlockEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSetEnableDragBlock:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static setLongPressMultiSelectionEnabled(Landroid/widget/ListView;Z)V
    .locals 1

    const v0, 0xf4252

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetLongPressMultiSelectionEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>()V

    throw p0
.end method

.method public static setLongPressMultiSelectionListener(Landroid/widget/ListView;Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView$LongPressMultiSelectionListener;)V
    .locals 1

    const v0, 0xf4252

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetLongPressMultiSelectionListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    iget-object p1, p1, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView$LongPressMultiSelectionListener;->mProxyInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Lcom/sec/sbrowser/spl/util/FallbackException;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/util/FallbackException;-><init>()V

    throw p0
.end method

.method public static setOnMultiSelectedListener(Landroid/widget/ListView;Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView$OnMultiSelectedListener;)V
    .locals 1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetMultiSelectedListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    iget-object p1, p1, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView$OnMultiSelectedListener;->mProxyInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSetMultiSelectedListener:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    iget-object p1, p1, Lcom/sec/sbrowser/spl/wrapper/MajoAdapterView$OnMultiSelectedListener;->mProxyInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static setRoundedCornerColor(Landroid/view/View;II)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetRoundedCornerColor:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setRoundedCorners(Landroid/view/View;I)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetRoundedCorners:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static setTwSetSmoothScrollEnable(Landroid/widget/ListView;Z)V
    .locals 1

    const v0, 0xf424e

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSemSetSmoothScrollEnabled:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoListView;->sSetSmoothScrollEnable:Lcom/sec/sbrowser/spl/util/ReflectMethod$V;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$V;->invokeWithBaseInstance(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
