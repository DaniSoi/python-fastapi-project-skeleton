from fastapi import APIRouter

from python_fastapi_project_skeleton.helpers.exception_handler_route import ExceptionHandlerRoute

router = APIRouter(route_class=ExceptionHandlerRoute)


@router.get("/")
def health() -> dict[str, str]:
    return {"status": "ok"}
