.class public Lcom/yasirkula/unity/NativeCameraPermissionFragment;
.super Landroid/app/Fragment;
.source "NativeCameraPermissionFragment.java"


# static fields
.field private static final PERMISSIONS_REQUEST_CODE:I = 0x1d745

.field public static final PICTURE_PERMISSION_ID:Ljava/lang/String; = "NC_PictureMode"


# instance fields
.field private final permissionReceiver:Lcom/yasirkula/unity/NativeCameraPermissionReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->permissionReceiver:Lcom/yasirkula/unity/NativeCameraPermissionReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/yasirkula/unity/NativeCameraPermissionReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "permissionReceiver"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object p1, p0, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->permissionReceiver:Lcom/yasirkula/unity/NativeCameraPermissionReceiver;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->permissionReceiver:Lcom/yasirkula/unity/NativeCameraPermissionReceiver;

    const v0, 0x1d745

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array v1, p1, [Ljava/lang/String;

    new-array p1, p1, [I

    invoke-virtual {p0, v0, v1, p1}, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    invoke-static {v1, v2}, Lcom/yasirkula/unity/NativeCameraUtils;->IsPermissionDefinedInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v1, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NC_PictureMode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :goto_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->requestPermissions([Ljava/lang/String;I)V

    :goto_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    const v0, 0x1d745

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->permissionReceiver:Lcom/yasirkula/unity/NativeCameraPermissionReceiver;

    const-string v0, "Unity"

    if-nez p1, :cond_1

    const-string p1, "Fragment data got reset while asking permissions!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    :cond_1
    array-length p1, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    array-length p1, p3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_5

    array-length v4, p3

    if-ge v3, v4, :cond_5

    aget v4, p3, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    aget-object p1, p2, v3

    invoke-virtual {p0, p1}, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v1, p1

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->permissionReceiver:Lcom/yasirkula/unity/NativeCameraPermissionReceiver;

    invoke-interface {p1, v1}, Lcom/yasirkula/unity/NativeCameraPermissionReceiver;->OnPermissionResult(I)V

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x20000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPermissionFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "Exception (resume):"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
